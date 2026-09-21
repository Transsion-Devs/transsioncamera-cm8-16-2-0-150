.class Lcom/ss/android/vesdk/jni/TEBingoInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/jni/TEBingoInterface;->extractVideoFrames(IIIIILcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/jni/TEBingoInterface;

.field final synthetic val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/jni/TEBingoInterface;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V
    .registers 3

    .line 215
    iput-object p1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface$1;->this$0:Lcom/ss/android/vesdk/jni/TEBingoInterface;

    iput-object p2, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface$1;->val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractFrameProcessCallback(F)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface$1;->val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

    if-eqz p0, :cond_7

    .line 219
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;->onProgress(F)V

    :cond_7
    return-void
.end method
