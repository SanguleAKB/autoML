#standardSQL
SELECT
  *
FROM
  ML.EVALUATE(MODEL `bqml_tutorial.penguins_model`,
    (
    SELECT
      *
    FROM
      `bigquery-public-data.ml_datasets.penguins`   -- sending whole dataset again to ecaluete.
    WHERE
      body_mass_g IS NOT NULL))   



-- sending only island="Biscoe"


#standardSQL
  SELECT
    *
  FROM
    ML.PREDICT(MODEL `bqml_tutorial.penguins_model`,
      (
      SELECT
        *
      FROM
        `bigquery-public-data.ml_datasets.penguins`
      WHERE
        body_mass_g IS NOT NULL
        AND island = "Biscoe"))