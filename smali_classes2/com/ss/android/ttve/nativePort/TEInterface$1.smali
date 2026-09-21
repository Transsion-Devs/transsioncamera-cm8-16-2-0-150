.class Lcom/ss/android/ttve/nativePort/TEInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/TEInterface;->beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/TEInterface;

.field final synthetic val$processAudioExtendListener:Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/TEInterface;Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)V
    .registers 3

    .line 967
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface$1;->this$0:Lcom/ss/android/ttve/nativePort/TEInterface;

    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/TEInterface$1;->val$processAudioExtendListener:Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioExtendToFileCancelCallback()V
    .registers 1

    .line 984
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEInterface$1;->val$processAudioExtendListener:Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;

    if-eqz p0, :cond_7

    .line 985
    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;->onCancelled()V

    :cond_7
    return-void
.end method

.method public onAudioExtendToFileFinishCallback(Z)V
    .registers 2

    .line 977
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEInterface$1;->val$processAudioExtendListener:Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;

    if-eqz p0, :cond_7

    .line 978
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;->onFinish(Z)V

    :cond_7
    return-void
.end method

.method public onAudioExtendToFileProcessCallback(F)V
    .registers 2

    .line 970
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEInterface$1;->val$processAudioExtendListener:Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;

    if-eqz p0, :cond_7

    .line 971
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;->onProgress(F)V

    :cond_7
    return-void
.end method
