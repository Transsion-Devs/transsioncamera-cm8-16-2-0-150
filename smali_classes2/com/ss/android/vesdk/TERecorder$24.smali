.class Lcom/ss/android/vesdk/TERecorder$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->setFrameEffectCallback(Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V
    .registers 3

    .line 5256
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$24;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$24;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(J)V
    .registers 3

    .line 5259
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$24;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;->onResult(J)V

    return-void
.end method
