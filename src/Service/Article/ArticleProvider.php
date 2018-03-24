<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 23/03/2018
 * Time: 16:54
 */

namespace App\Service\Article;


use Symfony\Component\Yaml\Exception\ParseException;
use Symfony\Component\Yaml\Yaml;

class ArticleProvider
{
    /*
     * Recupère, parse et retourne les articles
     * depuis articles.yaml
     */
    public function getArticles() {

        try {
            $articles = Yaml::parseFile(__DIR__ . '/articles.yaml');
            return $articles['data'];

        } catch (ParseException $e) {
            printf('Unable to parse the YAML string: %s', $e->getMessage());
        }

    }
}