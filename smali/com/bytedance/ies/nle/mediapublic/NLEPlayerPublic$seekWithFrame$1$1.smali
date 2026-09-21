.class public final Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$seekWithFrame$1$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$seekWithFrame$1$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    .line 61
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetImageDataCalled([BIIIF)I
    .registers 8

    const/4 v1, 0x0

    .line 70
    :try_start_1
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$seekWithFrame$1$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    if-nez p0, :cond_6

    return v1

    :cond_6
    invoke-interface/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;->onGetImageData([BIIIF)I

    move-result p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 72
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 73
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_1a

    goto :goto_3c

    .line 74
    :cond_1a
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 75
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "NLEVEPublic2: onGetImageDataCalled exception! errorMsg: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_3c
    return v1
.end method
