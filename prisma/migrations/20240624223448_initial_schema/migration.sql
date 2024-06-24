-- CreateTable
CREATE TABLE "users" (
    "created_at" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "users_email_idx" ON "users"("email");

-- CreateIndex
CREATE INDEX "users_name_idx" ON "users"("name");
