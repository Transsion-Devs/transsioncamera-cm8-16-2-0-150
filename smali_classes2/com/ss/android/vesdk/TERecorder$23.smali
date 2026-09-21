.class Lcom/ss/android/vesdk/TERecorder$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 5118
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$23;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 5

    .line 5135
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$23;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$3000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    if-eqz p0, :cond_15

    .line 5137
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onError(IILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onInfo(IIILjava/lang/String;)V
    .registers 6

    .line 5121
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$23;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$3000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    if-eqz p0, :cond_15

    .line 5123
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onInfo(IIILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onSuccess(IFI)V
    .registers 5

    .line 5128
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$23;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$3000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    if-eqz p0, :cond_15

    .line 5130
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onSuccess(IFI)V

    :cond_15
    return-void
.end method
