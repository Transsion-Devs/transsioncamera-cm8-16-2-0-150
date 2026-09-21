.class Lcom/ss/android/vesdk/TERecorder$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 3

    .line 3089
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$18;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$18;->val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([IIIJ)V
    .registers 6

    .line 3092
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$18;->val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    return-void
.end method
