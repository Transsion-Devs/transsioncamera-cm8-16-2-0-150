.class public Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native ImageScorer_destroy(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)I
.end method

.method public static final native ImageScorer_getScore(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)F
.end method

.method public static final native ImageScorer_init(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)I
.end method

.method public static final native ImageScorer_scoreImage(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;Ljava/lang/String;II)I
.end method

.method public static final native delete_ImageScorer(J)V
.end method

.method public static final native new_ImageScorer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)J
.end method
