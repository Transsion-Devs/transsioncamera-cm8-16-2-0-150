.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$setInnerInfoStickerBufferCallback$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->setInnerInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$setInnerInfoStickerBufferCallback$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;

    .line 46
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetBuffer(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$setInnerInfoStickerBufferCallback$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;

    invoke-interface {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;->onGetBuffer(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
