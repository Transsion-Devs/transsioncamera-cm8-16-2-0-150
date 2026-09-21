.class public Lcom/bytedance/ies/nle/editor_jni/NLEEditorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniConstants;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NLEResTypeToString(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)Ljava/lang/String;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->swigValue()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static NLETrackTypeToString(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETrackTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNLETimeMax()J
    .registers 2

    .line 17
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeMax_get()J

    move-result-wide v0

    return-wide v0
.end method
