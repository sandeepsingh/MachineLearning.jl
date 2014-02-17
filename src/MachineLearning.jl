module MachineLearning
    using
        DataFrames,
        Devectorize,
        Optim,
        RDatasets,
        StatsBase

    export
        # types
        ClassificationForest,
        ClassificationForestOptions,
        ClassificationModel,
        ClassificationModelOptions,
        ClassificationLeaf,
        ClassificationPipeline,
        ClassificationPipelineAny,
        ClassificationTree,
        ClassificationTreeOptions,
        DecisionBranch,
        DecisionNode,
        NeuralNet,
        NeuralNetLayer,
        NeuralNetOptions,
        PipelineOptions,
        PipelineOptionsAny,
        StopAfterIteration,
        RegressionForest,
        RegressionForestOptions,
        RegressionModel,
        RegressionModelOptions,
        StopAfterValidationErrorStopsImproving,
        SupervisedModel,
        SupervisedModelOptions,
        Transformer,
        TransformerOptions,
        Zmuv,
        ZmuvOptions,

        # methods
        accuracy,
        classification_forest_options,
        classification_split_location,
        classification_tree_options,
        cost,
        cost_gradient!,
        cost_gradient_update_net!,
        depth,
        fit,
        float_matrix,
        gini,
        initialize_net,
        initialize_neural_net_temporary,
        log_loss,
        mean_log_loss,
        mean_squared_error,
        net_to_weights,
        neural_net_options,
        one_hot,
        predict,
        predict_probs,
        regression_forest_options,
        regression_split_location,
        regression_tree_options,
        split_train_test,
        streaming_mse,
        transform,
        weights_to_net!

    include("common.jl")
    include("decision_tree.jl")
    include("metrics.jl")
    include("neural_net.jl")
    include("pipeline.jl")
    include("random_forest.jl")
    include("split.jl")
    include("transform/zmuv.jl")
end