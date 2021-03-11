<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categories')->delete();
        
        \DB::table('categories')->insert(array (
            0 => 
            array (
                'created_at' => '2020-10-22 06:57:13',
                'id' => 7,
                'name' => 'Supplies',
                'order' => 1,
                'parent_id' => NULL,
                'slug' => 'supplies',
                'updated_at' => '2020-10-22 06:57:13',
            ),
            1 => 
            array (
                'created_at' => '2020-10-22 06:57:27',
                'id' => 8,
                'name' => 'Supportive Products',
                'order' => 1,
                'parent_id' => NULL,
                'slug' => 'supportive-products',
                'updated_at' => '2020-10-22 06:57:27',
            ),
            2 => 
            array (
                'created_at' => '2020-10-22 06:57:38',
                'id' => 9,
                'name' => 'Chemicals',
                'order' => 1,
                'parent_id' => NULL,
                'slug' => 'chemicals',
                'updated_at' => '2020-10-22 06:57:38',
            ),
            3 => 
            array (
                'created_at' => '2020-10-22 06:57:52',
                'id' => 10,
                'name' => 'Brands',
                'order' => 1,
                'parent_id' => NULL,
                'slug' => 'brands',
                'updated_at' => '2020-10-22 06:57:52',
            ),
            4 => 
            array (
                'created_at' => '2020-10-22 06:58:27',
                'id' => 11,
                'name' => 'Lancer',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'lancer',
                'updated_at' => '2020-10-22 06:58:27',
            ),
            5 => 
            array (
                'created_at' => '2020-10-22 06:58:53',
                'id' => 12,
                'name' => 'Excalibur',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'excalibur',
                'updated_at' => '2020-10-22 06:58:53',
            ),
            6 => 
            array (
                'created_at' => '2020-10-22 06:59:05',
                'id' => 13,
                'name' => 'Evolution',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'evolution',
                'updated_at' => '2020-10-22 06:59:21',
            ),
            7 => 
            array (
                'created_at' => '2020-10-22 06:59:37',
                'id' => 14,
                'name' => 'STI Silicons',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'sti-silicons',
                'updated_at' => '2020-10-22 06:59:37',
            ),
            8 => 
            array (
                'created_at' => '2020-10-22 07:00:00',
                'id' => 16,
                'name' => 'Inknovators',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'inknovators',
                'updated_at' => '2020-10-22 07:00:00',
            ),
            9 => 
            array (
                'created_at' => '2020-10-22 07:00:27',
                'id' => 18,
                'name' => 'Antex',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'antex',
                'updated_at' => '2020-10-22 07:00:27',
            ),
            10 => 
            array (
                'created_at' => '2020-10-22 07:00:42',
                'id' => 19,
                'name' => 'Afford',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'afford',
                'updated_at' => '2020-10-22 07:00:42',
            ),
            11 => 
            array (
                'created_at' => '2020-10-22 07:01:00',
                'id' => 20,
                'name' => 'Rhinotech',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'rhinotech',
                'updated_at' => '2020-10-22 07:01:00',
            ),
            12 => 
            array (
                'created_at' => '2020-10-22 07:01:16',
                'id' => 21,
                'name' => 'Imagemate',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'imagemate',
                'updated_at' => '2020-10-22 07:01:16',
            ),
            13 => 
            array (
                'created_at' => '2020-10-22 07:01:31',
                'id' => 22,
                'name' => 'DST',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'dst',
                'updated_at' => '2020-10-22 07:01:31',
            ),
            14 => 
            array (
                'created_at' => '2020-10-22 07:01:43',
                'id' => 23,
                'name' => 'Acosgraf',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'acosgraf',
                'updated_at' => '2020-10-22 07:01:43',
            ),
            15 => 
            array (
                'created_at' => '2020-10-22 07:01:56',
                'id' => 24,
                'name' => 'Perfectone',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'perfectone',
                'updated_at' => '2020-10-22 07:01:56',
            ),
            16 => 
            array (
                'created_at' => '2020-10-22 07:02:09',
                'id' => 25,
                'name' => 'Perfect Color',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'perfect-color',
                'updated_at' => '2020-10-22 07:02:09',
            ),
            17 => 
            array (
                'created_at' => '2020-10-22 07:02:24',
                'id' => 26,
                'name' => 'South Tech',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'south-tech',
                'updated_at' => '2020-10-22 07:02:24',
            ),
            18 => 
            array (
                'created_at' => '2020-10-22 07:02:54',
                'id' => 28,
                'name' => 'Salipt',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'salipt',
                'updated_at' => '2020-10-22 07:02:54',
            ),
            19 => 
            array (
                'created_at' => '2020-10-22 07:03:12',
                'id' => 29,
                'name' => 'Allover Printing Chemical',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'allover-printing-chemical',
                'updated_at' => '2020-10-22 07:03:12',
            ),
            20 => 
            array (
                'created_at' => '2020-10-22 07:03:24',
                'id' => 30,
                'name' => 'Digital Printing Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'digital-printing-chemicals',
                'updated_at' => '2020-10-22 07:03:24',
            ),
            21 => 
            array (
                'created_at' => '2020-10-22 07:03:45',
                'id' => 31,
                'name' => 'Washing Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'washing-chemicals',
                'updated_at' => '2020-10-22 07:03:45',
            ),
            22 => 
            array (
                'created_at' => '2020-10-22 07:03:57',
                'id' => 32,
                'name' => 'Dyeing Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'dyeing-chemicals',
                'updated_at' => '2020-10-22 07:03:57',
            ),
            23 => 
            array (
                'created_at' => '2020-10-22 07:04:09',
                'id' => 33,
                'name' => 'Finishing Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'finishing-chemicals',
                'updated_at' => '2020-10-22 07:04:09',
            ),
            24 => 
            array (
                'created_at' => '2020-10-22 07:04:27',
                'id' => 34,
                'name' => 'Laboratory Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'laboratory-chemicals',
                'updated_at' => '2020-10-22 07:04:27',
            ),
            25 => 
            array (
                'created_at' => '2020-10-22 07:04:47',
                'id' => 35,
                'name' => 'Paper Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'paper-chemicals',
                'updated_at' => '2020-10-22 07:04:47',
            ),
            26 => 
            array (
                'created_at' => '2020-10-22 07:04:58',
                'id' => 36,
                'name' => 'Argo Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'argo-chemicals',
                'updated_at' => '2020-10-22 07:04:58',
            ),
            27 => 
            array (
                'created_at' => '2020-10-22 07:05:10',
                'id' => 37,
                'name' => 'Phermaceutical Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'phermaceutical-chemicals',
                'updated_at' => '2020-10-22 07:05:10',
            ),
            28 => 
            array (
                'created_at' => '2020-10-22 07:05:25',
                'id' => 38,
                'name' => 'Packaging Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'packaging-chemicals',
                'updated_at' => '2020-10-22 07:05:25',
            ),
            29 => 
            array (
                'created_at' => '2020-10-22 07:05:37',
                'id' => 39,
                'name' => 'Cleaning Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'cleaning-chemicals',
                'updated_at' => '2020-10-22 07:05:37',
            ),
            30 => 
            array (
                'created_at' => '2020-10-22 07:05:49',
                'id' => 40,
                'name' => 'Ceramic Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'ceramic-chemicals',
                'updated_at' => '2020-10-22 07:05:49',
            ),
            31 => 
            array (
                'created_at' => '2020-10-22 07:06:12',
                'id' => 41,
                'name' => 'Paint & Ink Manufacturing Chemicals',
                'order' => 1,
                'parent_id' => 9,
                'slug' => 'paint-and-ink-manufacturing-chemicals',
                'updated_at' => '2020-10-22 07:06:12',
            ),
            32 => 
            array (
                'created_at' => '2020-10-22 07:06:26',
                'id' => 42,
                'name' => 'Vinyl',
                'order' => 1,
                'parent_id' => 8,
                'slug' => 'vinyl',
                'updated_at' => '2020-10-22 07:06:26',
            ),
            33 => 
            array (
                'created_at' => '2020-10-22 07:06:40',
                'id' => 43,
                'name' => 'Screen Mesh',
                'order' => 1,
                'parent_id' => 8,
                'slug' => 'screen-mesh',
                'updated_at' => '2020-10-22 07:06:40',
            ),
            34 => 
            array (
                'created_at' => '2020-10-22 07:06:54',
                'id' => 44,
                'name' => 'Squegges',
                'order' => 1,
                'parent_id' => 8,
                'slug' => 'squegges',
                'updated_at' => '2020-10-22 07:06:54',
            ),
            35 => 
            array (
                'created_at' => '2020-10-22 07:07:10',
                'id' => 45,
                'name' => 'Emulsion',
                'order' => 1,
                'parent_id' => 8,
                'slug' => 'emulsion',
                'updated_at' => '2020-10-22 07:07:10',
            ),
            36 => 
            array (
                'created_at' => '2020-10-22 07:07:53',
                'id' => 47,
                'name' => 'Tape, Paper & Film',
                'order' => 1,
                'parent_id' => 8,
                'slug' => 'tape-paper-and-film',
                'updated_at' => '2020-10-22 07:07:53',
            ),
            37 => 
            array (
                'created_at' => '2020-10-22 07:08:13',
                'id' => 48,
                'name' => 'Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'inks',
                'updated_at' => '2020-10-31 18:03:04',
            ),
            38 => 
            array (
                'created_at' => '2020-10-22 07:08:36',
                'id' => 49,
                'name' => 'Film & Output Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'film-and-output-inks',
                'updated_at' => '2020-10-22 07:08:36',
            ),
            39 => 
            array (
                'created_at' => '2020-10-22 07:09:00',
                'id' => 50,
                'name' => 'Screen Printing Ink',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'screen-printing-ink',
                'updated_at' => '2020-10-22 07:09:00',
            ),
            40 => 
            array (
                'created_at' => '2020-10-22 07:09:15',
                'id' => 51,
                'name' => 'Offset Press Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'offset-press-inks',
                'updated_at' => '2020-10-22 07:09:15',
            ),
            41 => 
            array (
                'created_at' => '2020-10-22 07:09:28',
                'id' => 52,
                'name' => 'Sublimation Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'sublimation-inks',
                'updated_at' => '2020-10-22 07:09:28',
            ),
            42 => 
            array (
                'created_at' => '2020-10-22 07:09:40',
                'id' => 53,
                'name' => 'Pad Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'pad-printing-inks',
                'updated_at' => '2020-10-22 07:09:40',
            ),
            43 => 
            array (
                'created_at' => '2020-10-22 07:09:51',
                'id' => 54,
                'name' => 'Security Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'security-inks',
                'updated_at' => '2020-10-22 07:09:51',
            ),
            44 => 
            array (
                'created_at' => '2020-10-22 07:10:05',
                'id' => 55,
                'name' => 'Heat Transfer Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'heat-transfer-inks',
                'updated_at' => '2020-10-22 07:10:05',
            ),
            45 => 
            array (
                'created_at' => '2020-10-22 07:10:19',
                'id' => 56,
                'name' => 'Decal Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'decal-printing-inks',
                'updated_at' => '2020-10-22 07:10:19',
            ),
            46 => 
            array (
                'created_at' => '2020-10-22 07:10:34',
                'id' => 57,
                'name' => 'Digital Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'digital-printing-inks',
                'updated_at' => '2020-10-22 07:10:34',
            ),
            47 => 
            array (
                'created_at' => '2020-10-22 07:11:19',
                'id' => 59,
                'name' => 'Desktop Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'desktop-printing-inks',
                'updated_at' => '2020-10-22 07:11:19',
            ),
            48 => 
            array (
                'created_at' => '2020-10-22 07:11:35',
                'id' => 60,
                'name' => 'Pigment Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'pigment-printing-inks',
                'updated_at' => '2020-10-22 07:11:35',
            ),
            49 => 
            array (
                'created_at' => '2020-10-22 07:11:50',
                'id' => 61,
                'name' => 'Flexo Printing Inks',
                'order' => 1,
                'parent_id' => 7,
                'slug' => 'flexo-printing-inks',
                'updated_at' => '2020-10-22 07:11:50',
            ),
            50 => 
            array (
                'created_at' => '2020-11-09 16:31:00',
                'id' => 62,
                'name' => 'Chromaline',
                'order' => 1,
                'parent_id' => 10,
                'slug' => 'chromaline',
                'updated_at' => '2020-11-09 16:44:24',
            ),
        ));
        
        
    }
}