<?php

use Illuminate\Database\Seeder;

class DataTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('data_types')->delete();
        
        \DB::table('data_types')->insert(array (
            0 => 
            array (
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',
                'created_at' => '2020-10-11 08:06:38',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Users',
                'display_name_singular' => 'User',
                'generate_permissions' => 1,
                'icon' => 'voyager-person',
                'id' => 1,
                'model_name' => 'TCG\\Voyager\\Models\\User',
                'name' => 'users',
                'policy_name' => 'TCG\\Voyager\\Policies\\UserPolicy',
                'server_side' => 0,
                'slug' => 'users',
                'updated_at' => '2020-11-02 07:53:52',
            ),
            1 => 
            array (
                'controller' => '',
                'created_at' => '2020-10-11 08:06:38',
                'description' => '',
                'details' => NULL,
                'display_name_plural' => 'Menus',
                'display_name_singular' => 'Menu',
                'generate_permissions' => 1,
                'icon' => 'voyager-list',
                'id' => 2,
                'model_name' => 'TCG\\Voyager\\Models\\Menu',
                'name' => 'menus',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'menus',
                'updated_at' => '2020-10-11 08:06:38',
            ),
            2 => 
            array (
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',
                'created_at' => '2020-10-11 08:06:38',
                'description' => '',
                'details' => NULL,
                'display_name_plural' => 'Roles',
                'display_name_singular' => 'Role',
                'generate_permissions' => 1,
                'icon' => 'voyager-lock',
                'id' => 3,
                'model_name' => 'TCG\\Voyager\\Models\\Role',
                'name' => 'roles',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'roles',
                'updated_at' => '2020-10-11 08:06:38',
            ),
            3 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-11 08:06:39',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Categories',
                'display_name_singular' => 'Category',
                'generate_permissions' => 1,
                'icon' => 'voyager-categories',
                'id' => 4,
                'model_name' => 'TCG\\Voyager\\Models\\Category',
                'name' => 'categories',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'categories',
                'updated_at' => '2020-10-31 17:50:05',
            ),
            4 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-11 08:06:39',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Posts',
                'display_name_singular' => 'Post',
                'generate_permissions' => 1,
                'icon' => 'voyager-news',
                'id' => 5,
                'model_name' => 'TCG\\Voyager\\Models\\Post',
                'name' => 'posts',
                'policy_name' => 'TCG\\Voyager\\Policies\\PostPolicy',
                'server_side' => 0,
                'slug' => 'posts',
                'updated_at' => '2020-11-12 06:12:36',
            ),
            5 => 
            array (
                'controller' => '',
                'created_at' => '2020-10-11 08:06:39',
                'description' => '',
                'details' => NULL,
                'display_name_plural' => 'Pages',
                'display_name_singular' => 'Page',
                'generate_permissions' => 1,
                'icon' => 'voyager-file-text',
                'id' => 6,
                'model_name' => 'TCG\\Voyager\\Models\\Page',
                'name' => 'pages',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'pages',
                'updated_at' => '2020-10-11 08:06:39',
            ),
            6 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-11 08:13:53',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Orders',
                'display_name_singular' => 'Order',
                'generate_permissions' => 1,
                'icon' => 'voyager-buy',
                'id' => 7,
                'model_name' => 'App\\Order',
                'name' => 'orders',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'orders',
                'updated_at' => '2020-10-19 16:49:06',
            ),
            7 => 
            array (
                'controller' => 'App\\Http\\Controllers\\Admin\\ShopController',
                'created_at' => '2020-10-12 06:18:19',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Shops',
                'display_name_singular' => 'Shop',
                'generate_permissions' => 1,
                'icon' => 'voyager-shop',
                'id' => 8,
                'model_name' => 'App\\Shop',
                'name' => 'shops',
                'policy_name' => 'App\\Policies\\ShopPolicy',
                'server_side' => 0,
                'slug' => 'shops',
                'updated_at' => '2020-10-12 08:28:20',
            ),
            8 => 
            array (
                'controller' => 'App\\Http\\Controllers\\Admin\\ProductController',
                'created_at' => '2020-10-12 09:02:30',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Products',
                'display_name_singular' => 'Product',
                'generate_permissions' => 1,
                'icon' => 'voyager-bag',
                'id' => 9,
                'model_name' => 'App\\Product',
                'name' => 'products',
                'policy_name' => 'App\\Policies\\ProductPolicy',
                'server_side' => 0,
                'slug' => 'products',
                'updated_at' => '2020-11-18 18:12:15',
            ),
            9 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-14 14:44:03',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Coupons',
                'display_name_singular' => 'Coupon',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 10,
                'model_name' => 'App\\Coupon',
                'name' => 'coupons',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'coupons',
                'updated_at' => '2020-10-14 14:44:03',
            ),
            10 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-15 16:39:04',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Transactions',
                'display_name_singular' => 'Transaction',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 11,
                'model_name' => 'App\\Transaction',
                'name' => 'transactions',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'transactions',
                'updated_at' => '2020-10-15 16:39:04',
            ),
            11 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-15 16:40:36',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Sub Orders',
                'display_name_singular' => 'Sub Order',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 12,
                'model_name' => 'App\\SubOrder',
                'name' => 'sub_orders',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'sub-orders',
                'updated_at' => '2020-10-15 16:40:36',
            ),
            12 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-31 08:16:37',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Custom Pages',
                'display_name_singular' => 'Custom Page',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 16,
                'model_name' => 'App\\CustomPages',
                'name' => 'custom_pages',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'custom-pages',
                'updated_at' => '2020-10-31 15:35:54',
            ),
            13 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-31 11:20:37',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Home Videos',
                'display_name_singular' => 'Home Video',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 17,
                'model_name' => 'App\\HomeVideo',
                'name' => 'home_videos',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'home-videos',
                'updated_at' => '2020-10-31 11:20:37',
            ),
            14 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-31 12:49:37',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Contacts',
                'display_name_singular' => 'Contact',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 19,
                'model_name' => 'App\\Contact',
                'name' => 'contacts',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'contacts',
                'updated_at' => '2020-10-31 12:49:37',
            ),
            15 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-31 13:03:21',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Faqs',
                'display_name_singular' => 'Faq',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 21,
                'model_name' => 'App\\Faq',
                'name' => 'faqs',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'faqs',
                'updated_at' => '2020-10-31 13:03:21',
            ),
            16 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-10-31 17:08:29',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Wholesales',
                'display_name_singular' => 'Wholesale',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 22,
                'model_name' => 'App\\Wholesale',
                'name' => 'wholesales',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'wholesales',
                'updated_at' => '2020-11-02 06:48:28',
            ),
            17 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-01 14:23:14',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Product Attributes',
                'display_name_singular' => 'Product Attribute',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 23,
                'model_name' => 'App\\ProductAttribute',
                'name' => 'product_attributes',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'product-attributes',
                'updated_at' => '2020-11-01 15:51:09',
            ),
            18 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-01 14:35:57',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Videos',
                'display_name_singular' => 'Video',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 24,
                'model_name' => 'App\\Video',
                'name' => 'videos',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'videos',
                'updated_at' => '2020-11-14 16:53:10',
            ),
            19 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-01 14:36:29',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Video Categories',
                'display_name_singular' => 'Video Category',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 25,
                'model_name' => 'App\\VideoCategory',
                'name' => 'video_categories',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'video-categories',
                'updated_at' => '2020-11-07 04:04:51',
            ),
            20 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-01 15:23:34',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Ebook Requests',
                'display_name_singular' => 'Ebook Request',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 26,
                'model_name' => 'App\\EbookRequest',
                'name' => 'ebook_requests',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'ebook-requests',
                'updated_at' => '2020-11-01 15:23:34',
            ),
            21 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-02 06:48:43',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Wallets',
                'display_name_singular' => 'Wallet',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 27,
                'model_name' => 'App\\Wallet',
                'name' => 'wallets',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'wallets',
                'updated_at' => '2020-11-02 06:49:33',
            ),
            22 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-02 06:50:39',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Reward Points',
                'display_name_singular' => 'Reward Point',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 28,
                'model_name' => 'App\\RewardPoint',
                'name' => 'reward_points',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'reward-points',
                'updated_at' => '2020-11-02 06:52:23',
            ),
            23 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-02 06:52:49',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'display_name_plural' => 'Gift Card Purchases',
                'display_name_singular' => 'Gift Card Purchase',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 29,
                'model_name' => 'App\\GiftCardPurchase',
                'name' => 'gift_card_purchases',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'gift-card-purchases',
                'updated_at' => '2020-11-02 06:54:47',
            ),
            24 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-02 06:57:44',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Gift Cards',
                'display_name_singular' => 'Gift Card',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 30,
                'model_name' => 'App\\GiftCard',
                'name' => 'gift_cards',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'gift-cards',
                'updated_at' => '2020-11-02 06:57:44',
            ),
            25 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-02 06:58:31',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Site Reviews',
                'display_name_singular' => 'Site Review',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 31,
                'model_name' => 'App\\SiteReview',
                'name' => 'site_reviews',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'site-reviews',
                'updated_at' => '2020-11-02 06:58:31',
            ),
            26 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-12 06:05:07',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Post Categories',
                'display_name_singular' => 'Post Category',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 32,
                'model_name' => 'App\\PostCategory',
                'name' => 'post_categories',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'post-categories',
                'updated_at' => '2020-11-12 06:05:07',
            ),
            27 => 
            array (
                'controller' => NULL,
                'created_at' => '2020-11-16 01:57:16',
                'description' => NULL,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'display_name_plural' => 'Expenses',
                'display_name_singular' => 'Expense',
                'generate_permissions' => 1,
                'icon' => NULL,
                'id' => 33,
                'model_name' => 'App\\Expense',
                'name' => 'expenses',
                'policy_name' => NULL,
                'server_side' => 0,
                'slug' => 'expenses',
                'updated_at' => '2020-11-16 01:57:16',
            ),
        ));
        
        
    }
}