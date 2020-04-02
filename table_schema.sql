-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- AIRBNB LISTINGS

CREATE TABLE "listing" (
    "id" INT   NOT NULL,
    "listing_url" VARCHAR   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "price" INT   NOT NULL,
    CONSTRAINT "pk_listing" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "neighborhood" (
    "id" INT   NOT NULL,
    "neighbourhood_cleansed" VARCHAR   NOT NULL,
    "zipcode" OB   NOT NULL,
    "listing_id" INT   NOT NULL,
    CONSTRAINT "pk_neighborhood" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "host" (
    "id" INT   NOT NULL,
    "host_id" VARCHAR   NOT NULL,
    "host_url" VARCHAR   NOT NULL,
    "host_name" VARCHAR   NOT NULL,
    "host_since" VARCHAR   NOT NULL,
    "superhost_status" VARCHAR   NOT NULL,
    "host_total_listings_count" INT   NOT NULL,
    "listing_id" INT   NOT NULL,
    CONSTRAINT "pk_host" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "property_stats" (
    "id" INT   NOT NULL,
    "property_type" VARCHAR   NOT NULL,
    "room_type" VARCHAR   NOT NULL,
    "bedrooms" INT   NOT NULL,
    "bathrooms" INT   NOT NULL,
    "listing_id" INT   NOT NULL,
    CONSTRAINT "pk_property_stats" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "fees" (
    "id" INT   NOT NULL,
    "security_deposit" INT   NOT NULL,
    "cleaning_fee" INT   NOT NULL,
    "extra_people" INT   NOT NULL,
    "listing_id" INT   NOT NULL,
    CONSTRAINT "pk_fees" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "reviews" (
    "id" INT   NOT NULL,
    "rating" INT   NOT NULL,
    "accuracy" INT   NOT NULL,
    "cleanliness" INT   NOT NULL,
    "location" INT   NOT NULL,
    "value" INT   NOT NULL,
    "reviews_per_month" INT   NOT NULL,
    "listing_id" INT   NOT NULL,
    CONSTRAINT "pk_reviews" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "neighborhood" ADD CONSTRAINT "fk_neighborhood_listing_id" FOREIGN KEY("listing_id")
REFERENCES "listing" ("id");

ALTER TABLE "host" ADD CONSTRAINT "fk_host_listing_id" FOREIGN KEY("listing_id")
REFERENCES "listing" ("id");

ALTER TABLE "property_stats" ADD CONSTRAINT "fk_property_stats_listing_id" FOREIGN KEY("listing_id")
REFERENCES "listing" ("id");

ALTER TABLE "fees" ADD CONSTRAINT "fk_fees_listing_id" FOREIGN KEY("listing_id")
REFERENCES "listing" ("id");

ALTER TABLE "reviews" ADD CONSTRAINT "fk_reviews_listing_id" FOREIGN KEY("listing_id")
REFERENCES "listing" ("id");

