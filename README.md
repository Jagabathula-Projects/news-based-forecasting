# news-based-forecasting
Code and data for the paper *News event-driven forecasting of commodity prices*.

## Data
*price_data* : daily crop prices (in Rs/quintal) from Jan 1, 2006 to Dec 31, 2020 in csv format

*disease_data* : monthly reported cases from Jan 2006 to Dec 2015 in csv format

*embeddings* : daily embedding vectors for train and test period, stored as a 2d numpy array in `.npy' format 

## Code 
*embeddings/embeddings.ipynb* : ipython notebook for computing the LDA topic, doc2vec and word2vec embeddings from news corpus

*foodprice_arima.ipynb* : ipython notebook implementing and testing linear forecasting models (ARIMA and AR)

*foodprice_nonlinear_raw.ipynb* : ipython notebook implementing LSTM models with raw prices as inputs

*foodprice_nonlinear_returns.ipynb* : ipython notebook implementing LSTM models with log(1+return) as inputs

*foodprice_nonlinear_testing.ipynb* : ipython notebook testing LSTM models 

*foodprice_plot.ipynb* : ipython notebook for plotting daily forecast errors (Figure 3 and EC.4)

*importance/event_importance_score.ipynb* : ipython notebook for computing event importance scores as described in Section 5.2

*importance/Figure_4_heatmap.ipynb* : ipython notebook for plotting Figure 4 heatmap

*health_models.ipynb* : : ipython notebook implementing LSTM models for disease prediction

