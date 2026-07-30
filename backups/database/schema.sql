


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."accept_order"("p_order_id" "uuid", "p_driver_id" "uuid") RETURNS boolean
    LANGUAGE "plpgsql"
    AS $$
begin

    update orders
    set
        driver_id = p_driver_id,
        status = 'accepted',
        accepted_at = now()
    where
        id = p_order_id
        and status = 'pending'
        and driver_id is null;

    return found;

end;
$$;


ALTER FUNCTION "public"."accept_order"("p_order_id" "uuid", "p_driver_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  INSERT INTO public.profiles (id, email)
  VALUES (new.id, new.email)
  ON CONFLICT (id) DO NOTHING; -- যদি আইডি ইতিমধ্যে থাকে, তবে নতুন রো তৈরি করবে না
  RETURN new;
END;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."admins" (
    "id" "uuid" NOT NULL,
    "full_name" "text" NOT NULL,
    "email" "text" NOT NULL,
    "role" "text" DEFAULT 'admin'::"text" NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."admins" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."app_content" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "slug" "text" NOT NULL,
    "title" "text" NOT NULL,
    "content" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "app_name" "text",
    "app_logo" "text",
    "support_email" "text",
    "support_phone" "text",
    "company_address" "text",
    "currency_symbol" "text" DEFAULT '৳'::"text",
    "platform_fee" numeric(10,2) DEFAULT 0,
    "vat_percentage" numeric(10,2) DEFAULT 0,
    "service_charge" numeric(10,2) DEFAULT 0,
    "cancellation_fee" numeric(10,2) DEFAULT 0,
    "google_maps_api_key" "text",
    "paystack_public_key" "text",
    "paystack_secret_key" "text",
    "auto_cancel_minutes" integer DEFAULT 30,
    "primary_color" "text" DEFAULT '#2563EB'::"text",
    "secondary_color" "text" DEFAULT '#111827'::"text",
    "maintenance_mode" boolean DEFAULT false,
    "app_version" "text" DEFAULT '1.0.0'::"text"
);


ALTER TABLE "public"."app_content" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."conversations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "driver_id" "uuid" NOT NULL,
    "order_id" "uuid",
    "last_message" "text",
    "last_message_at" timestamp with time zone,
    "customer_unread_count" integer DEFAULT 0 NOT NULL,
    "driver_unread_count" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "type" "text" DEFAULT 'order'::"text" NOT NULL,
    "admin_id" "uuid",
    "status" "text" DEFAULT 'active'::"text" NOT NULL
);


ALTER TABLE "public"."conversations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."delivery_settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "price_per_km" numeric(10,2) DEFAULT 25 NOT NULL,
    "minimum_delivery_fee" numeric(10,2) DEFAULT 80 NOT NULL,
    "maximum_delivery_fee" numeric(10,2),
    "is_active" boolean DEFAULT true,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."delivery_settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."driver_locations" (
    "driver_id" "uuid" NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "heading" double precision DEFAULT 0,
    "speed" double precision DEFAULT 0,
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."driver_locations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."driver_verifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "driver_id" "uuid" NOT NULL,
    "driving_license_number" "text",
    "license_front_image" "text",
    "license_back_image" "text",
    "verification_status" "text" DEFAULT 'pending'::"text",
    "rejection_reason" "text",
    "verified_by" "uuid",
    "verified_at" timestamp with time zone,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."driver_verifications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."drivers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "vehicle_type" "text",
    "vehicle_registration" "text",
    "license_number" "text",
    "is_online" boolean DEFAULT false,
    "current_latitude" numeric,
    "current_longitude" numeric,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "approval_status" "text" DEFAULT 'pending'::"text"
);


ALTER TABLE "public"."drivers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."fuel_orders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid",
    "fuel_type" "text" NOT NULL,
    "quantity" integer NOT NULL,
    "address" "text" NOT NULL,
    "status" "text" DEFAULT 'pending'::"text",
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."fuel_orders" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."fuel_prices" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "fuel_type" "text" NOT NULL,
    "price_per_liter" numeric NOT NULL,
    "currency_symbol" "text" DEFAULT '৳'::"text",
    "active" boolean DEFAULT true,
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."fuel_prices" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."messages" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "conversation_id" "uuid" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "receiver_id" "uuid" NOT NULL,
    "message" "text" NOT NULL,
    "is_read" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "message_type" "text" DEFAULT 'text'::"text" NOT NULL
);

ALTER TABLE ONLY "public"."messages" REPLICA IDENTITY FULL;


ALTER TABLE "public"."messages" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "title" "text",
    "message" "text",
    "is_read" boolean DEFAULT false,
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."notifications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."order_assignments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid",
    "driver_id" "uuid",
    "assigned_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."order_assignments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."orders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid",
    "fuel_type" "text",
    "quantity" numeric,
    "delivery_address" "text",
    "latitude" numeric,
    "longitude" numeric,
    "subtotal" numeric,
    "delivery_fee" numeric,
    "total" numeric,
    "status" "text" DEFAULT 'pending'::"text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "driver_id" "uuid",
    "liters" numeric,
    "address" "text",
    "total_price" numeric DEFAULT 0,
    "payment_method" "text",
    "accepted_at" timestamp with time zone,
    "completed_at" timestamp with time zone,
    "delivery_started_at" timestamp with time zone,
    "arrived_at" timestamp with time zone,
    "delivering_at" timestamp with time zone,
    "cancelled_at" timestamp with time zone,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "assigned_at" timestamp with time zone,
    "customer_confirmed_at" timestamp with time zone,
    "customer_confirmation_requested_at" timestamp with time zone,
    CONSTRAINT "orders_status_check" CHECK (("status" = ANY (ARRAY['pending'::"text", 'accepted'::"text", 'delivering'::"text", 'arrived'::"text", 'waiting_confirmation'::"text", 'completed'::"text", 'cancelled'::"text"])))
);


ALTER TABLE "public"."orders" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid",
    "amount" numeric,
    "status" "text",
    "stripe_payment_id" "text",
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" NOT NULL,
    "full_name" "text",
    "email" "text",
    "phone" "text",
    "role" "text" DEFAULT 'customer'::"text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "is_online" boolean DEFAULT false,
    "latitude" double precision,
    "longitude" double precision,
    "heading" double precision,
    "last_location_update" timestamp with time zone,
    "last_location_at" timestamp with time zone,
    "avatar_url" "text",
    "division" "text",
    "city" "text",
    "area" "text",
    "address" "text"
);


ALTER TABLE "public"."profiles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."promotion_banners" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text" NOT NULL,
    "subtitle" "text",
    "target_app" "text" DEFAULT 'both'::"text" NOT NULL,
    "sort_order" integer DEFAULT 0,
    "is_active" boolean DEFAULT true,
    "starts_at" timestamp with time zone,
    "ends_at" timestamp with time zone,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "tag" "text"
);


ALTER TABLE "public"."promotion_banners" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."vehicles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "make" "text" NOT NULL,
    "model" "text" NOT NULL,
    "year" integer,
    "plate_number" "text",
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."vehicles" OWNER TO "postgres";


ALTER TABLE ONLY "public"."admins"
    ADD CONSTRAINT "admins_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."admins"
    ADD CONSTRAINT "admins_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."app_content"
    ADD CONSTRAINT "app_content_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."app_content"
    ADD CONSTRAINT "app_content_slug_key" UNIQUE ("slug");



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_order_id_key" UNIQUE ("order_id");



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."delivery_settings"
    ADD CONSTRAINT "delivery_settings_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."driver_locations"
    ADD CONSTRAINT "driver_locations_pkey" PRIMARY KEY ("driver_id");



ALTER TABLE ONLY "public"."driver_verifications"
    ADD CONSTRAINT "driver_verifications_driver_id_key" UNIQUE ("driver_id");



ALTER TABLE ONLY "public"."driver_verifications"
    ADD CONSTRAINT "driver_verifications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."drivers"
    ADD CONSTRAINT "drivers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."fuel_orders"
    ADD CONSTRAINT "fuel_orders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."fuel_prices"
    ADD CONSTRAINT "fuel_prices_fuel_type_key" UNIQUE ("fuel_type");



ALTER TABLE ONLY "public"."fuel_prices"
    ADD CONSTRAINT "fuel_prices_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."order_assignments"
    ADD CONSTRAINT "order_assignments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."promotion_banners"
    ADD CONSTRAINT "promotion_banners_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."vehicles"
    ADD CONSTRAINT "vehicles_pkey" PRIMARY KEY ("id");



CREATE INDEX "idx_conversations_customer" ON "public"."conversations" USING "btree" ("customer_id");



CREATE INDEX "idx_conversations_driver" ON "public"."conversations" USING "btree" ("driver_id");



CREATE INDEX "idx_messages_conversation" ON "public"."messages" USING "btree" ("conversation_id");



CREATE INDEX "idx_messages_receiver" ON "public"."messages" USING "btree" ("receiver_id");



CREATE INDEX "idx_profiles_driver_location" ON "public"."profiles" USING "btree" ("latitude", "longitude");



ALTER TABLE ONLY "public"."admins"
    ADD CONSTRAINT "admins_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_admin_id_fkey" FOREIGN KEY ("admin_id") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_driver_id_fkey" FOREIGN KEY ("driver_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."conversations"
    ADD CONSTRAINT "conversations_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."driver_locations"
    ADD CONSTRAINT "driver_locations_driver_id_fkey" FOREIGN KEY ("driver_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."driver_verifications"
    ADD CONSTRAINT "driver_verifications_driver_id_fkey" FOREIGN KEY ("driver_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."drivers"
    ADD CONSTRAINT "drivers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."fuel_orders"
    ADD CONSTRAINT "fuel_orders_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_conversation_id_fkey" FOREIGN KEY ("conversation_id") REFERENCES "public"."conversations"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_receiver_id_fkey" FOREIGN KEY ("receiver_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."order_assignments"
    ADD CONSTRAINT "order_assignments_driver_id_fkey" FOREIGN KEY ("driver_id") REFERENCES "public"."drivers"("id");



ALTER TABLE ONLY "public"."order_assignments"
    ADD CONSTRAINT "order_assignments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_driver_id_fkey" FOREIGN KEY ("driver_id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."vehicles"
    ADD CONSTRAINT "vehicles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profiles"("id") ON DELETE CASCADE;



CREATE POLICY "Admin Full Access Orders" ON "public"."orders" TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text"))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text")))));



CREATE POLICY "Admins can update delivery settings" ON "public"."delivery_settings" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text"))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text")))));



CREATE POLICY "Admins can update fuel prices" ON "public"."fuel_prices" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text"))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"text")))));



CREATE POLICY "Admins can view themselves" ON "public"."admins" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "Admins manage app content" ON "public"."app_content" USING (("auth"."role"() = 'authenticated'::"text")) WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Allow public insert for signup" ON "public"."profiles" FOR INSERT WITH CHECK (true);



CREATE POLICY "Anyone can read fuel prices" ON "public"."fuel_prices" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Authenticated users can read delivery settings" ON "public"."delivery_settings" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Authenticated users can read driver profiles" ON "public"."profiles" FOR SELECT TO "authenticated" USING (("role" = 'driver'::"text"));



CREATE POLICY "Authenticated users can read profiles" ON "public"."profiles" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Customer Create Order" ON "public"."orders" FOR INSERT TO "authenticated" WITH CHECK (("customer_id" = "auth"."uid"()));



CREATE POLICY "Customer Read Own Orders" ON "public"."orders" FOR SELECT TO "authenticated" USING (("customer_id" = "auth"."uid"()));



CREATE POLICY "Customer Update Own Orders" ON "public"."orders" FOR UPDATE TO "authenticated" USING ((("customer_id" = "auth"."uid"()) AND ("status" = ANY (ARRAY['pending'::"text", 'waiting_confirmation'::"text"])))) WITH CHECK (("customer_id" = "auth"."uid"()));



CREATE POLICY "Customers can read their orders" ON "public"."orders" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "customer_id"));



CREATE POLICY "Driver Manage Own Location" ON "public"."driver_locations" USING (("driver_id" = "auth"."uid"())) WITH CHECK (("driver_id" = "auth"."uid"()));



CREATE POLICY "Driver Read Orders" ON "public"."orders" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'driver'::"text")))));



CREATE POLICY "Driver Update Orders" ON "public"."orders" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'driver'::"text"))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'driver'::"text")))));



CREATE POLICY "Driver Update Own Location" ON "public"."driver_locations" USING (("driver_id" = "auth"."uid"())) WITH CHECK (("driver_id" = "auth"."uid"()));



CREATE POLICY "Enable read access for all users" ON "public"."app_content" FOR SELECT USING (true);



CREATE POLICY "Public can read app content" ON "public"."app_content" FOR SELECT USING (true);



CREATE POLICY "Public can read fuel prices" ON "public"."fuel_prices" FOR SELECT TO "anon" USING (true);



CREATE POLICY "Read Driver Locations" ON "public"."driver_locations" FOR SELECT USING (true);



CREATE POLICY "Receiver can update messages" ON "public"."messages" FOR UPDATE USING (("auth"."uid"() = "receiver_id"));



CREATE POLICY "Users can create conversations" ON "public"."conversations" FOR INSERT WITH CHECK ((("auth"."uid"() = "customer_id") OR ("auth"."uid"() = "driver_id")));



CREATE POLICY "Users can insert their own profile" ON "public"."profiles" FOR INSERT WITH CHECK (("auth"."uid"() = "id"));



CREATE POLICY "Users can read messages" ON "public"."messages" FOR SELECT USING ((("auth"."uid"() = "sender_id") OR ("auth"."uid"() = "receiver_id")));



CREATE POLICY "Users can read their own profile" ON "public"."profiles" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can send messages" ON "public"."messages" FOR INSERT WITH CHECK (("auth"."uid"() = "sender_id"));



CREATE POLICY "Users can update conversations" ON "public"."conversations" FOR UPDATE USING ((("auth"."uid"() = "customer_id") OR ("auth"."uid"() = "driver_id")));



CREATE POLICY "Users can update own profile" ON "public"."profiles" FOR UPDATE USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can update their own profile" ON "public"."profiles" FOR UPDATE USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can view own profile" ON "public"."profiles" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can view their conversations" ON "public"."conversations" FOR SELECT USING ((("auth"."uid"() = "customer_id") OR ("auth"."uid"() = "driver_id")));



ALTER TABLE "public"."admins" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."app_content" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."conversations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."delivery_settings" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."driver_locations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."driver_verifications" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."drivers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."fuel_orders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."fuel_prices" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."messages" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."notifications" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."order_assignments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."orders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."payments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."profiles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."vehicles" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."driver_locations";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."orders";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."profiles";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";






















































































































































GRANT ALL ON FUNCTION "public"."accept_order"("p_order_id" "uuid", "p_driver_id" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."accept_order"("p_order_id" "uuid", "p_driver_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."accept_order"("p_order_id" "uuid", "p_driver_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";


















GRANT ALL ON TABLE "public"."admins" TO "anon";
GRANT ALL ON TABLE "public"."admins" TO "authenticated";
GRANT ALL ON TABLE "public"."admins" TO "service_role";



GRANT ALL ON TABLE "public"."app_content" TO "anon";
GRANT ALL ON TABLE "public"."app_content" TO "authenticated";
GRANT ALL ON TABLE "public"."app_content" TO "service_role";



GRANT ALL ON TABLE "public"."conversations" TO "anon";
GRANT ALL ON TABLE "public"."conversations" TO "authenticated";
GRANT ALL ON TABLE "public"."conversations" TO "service_role";



GRANT ALL ON TABLE "public"."delivery_settings" TO "anon";
GRANT ALL ON TABLE "public"."delivery_settings" TO "authenticated";
GRANT ALL ON TABLE "public"."delivery_settings" TO "service_role";



GRANT ALL ON TABLE "public"."driver_locations" TO "anon";
GRANT ALL ON TABLE "public"."driver_locations" TO "authenticated";
GRANT ALL ON TABLE "public"."driver_locations" TO "service_role";



GRANT ALL ON TABLE "public"."driver_verifications" TO "anon";
GRANT ALL ON TABLE "public"."driver_verifications" TO "authenticated";
GRANT ALL ON TABLE "public"."driver_verifications" TO "service_role";



GRANT ALL ON TABLE "public"."drivers" TO "anon";
GRANT ALL ON TABLE "public"."drivers" TO "authenticated";
GRANT ALL ON TABLE "public"."drivers" TO "service_role";



GRANT ALL ON TABLE "public"."fuel_orders" TO "anon";
GRANT ALL ON TABLE "public"."fuel_orders" TO "authenticated";
GRANT ALL ON TABLE "public"."fuel_orders" TO "service_role";



GRANT ALL ON TABLE "public"."fuel_prices" TO "anon";
GRANT ALL ON TABLE "public"."fuel_prices" TO "authenticated";
GRANT ALL ON TABLE "public"."fuel_prices" TO "service_role";



GRANT ALL ON TABLE "public"."messages" TO "anon";
GRANT ALL ON TABLE "public"."messages" TO "authenticated";
GRANT ALL ON TABLE "public"."messages" TO "service_role";



GRANT ALL ON TABLE "public"."notifications" TO "anon";
GRANT ALL ON TABLE "public"."notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."notifications" TO "service_role";



GRANT ALL ON TABLE "public"."order_assignments" TO "anon";
GRANT ALL ON TABLE "public"."order_assignments" TO "authenticated";
GRANT ALL ON TABLE "public"."order_assignments" TO "service_role";



GRANT ALL ON TABLE "public"."orders" TO "anon";
GRANT ALL ON TABLE "public"."orders" TO "authenticated";
GRANT ALL ON TABLE "public"."orders" TO "service_role";



GRANT ALL ON TABLE "public"."payments" TO "anon";
GRANT ALL ON TABLE "public"."payments" TO "authenticated";
GRANT ALL ON TABLE "public"."payments" TO "service_role";



GRANT ALL ON TABLE "public"."profiles" TO "anon";
GRANT ALL ON TABLE "public"."profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."profiles" TO "service_role";



GRANT ALL ON TABLE "public"."promotion_banners" TO "anon";
GRANT ALL ON TABLE "public"."promotion_banners" TO "authenticated";
GRANT ALL ON TABLE "public"."promotion_banners" TO "service_role";



GRANT ALL ON TABLE "public"."vehicles" TO "anon";
GRANT ALL ON TABLE "public"."vehicles" TO "authenticated";
GRANT ALL ON TABLE "public"."vehicles" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































