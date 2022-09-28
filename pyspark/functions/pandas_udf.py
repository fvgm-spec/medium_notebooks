
def vertical_df(df):
    """Creates a new report from the dataframe imported using pandas
        through features of the dataframe.

        Parameters:
        df (pd.DataFrame)): Dataframe imported using pandas

        Returns:
        df (pd.DataFrame)): Report with each of the dataframe columns,
        d_types, 1st 5 values of each column and number of unique values
        for that columns.
    """

    import pandas as pd
    from tabulate import tabulate
    pd.options.display.float_format = '{:,.3f}'.format
    pd.set_option('display.max_columns', None)
    pd.set_option('display.max_colwidth', 250)
    pd.set_option("display.colheader_justify", "left")
    col = []
    d_type = []
    uniques = []
    n_uniques = []
    isnan = []


    for i in df.columns:
        col.append(i)
        d_type.append(df[i].dtypes)
        uniques.append(df[i].unique()[:5])
        n_uniques.append(df[i].nunique())
        isnan.append(df[i].isna().sum())

    df = pd.DataFrame({'Column': col, 'd_type': d_type, 'unique_sample': uniques, 'n_uniques': n_uniques, 'nas': isnan})
    #return df
    return df.style.set_properties(subset=["unique_sample"], **{'text-align': 'left'})
