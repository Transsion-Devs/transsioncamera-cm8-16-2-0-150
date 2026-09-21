.class public final synthetic Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->$r8$lambda$ktl_g1CgiKOzS-4I5kH2KhxyFJ8(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
