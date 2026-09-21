.class Lcom/ss/android/vesdk/VEUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$progressCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)V
    .registers 2

    .line 1572
    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$2;->val$progressCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .registers 2

    .line 1574
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$2;->val$progressCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;

    if-eqz p0, :cond_7

    .line 1575
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;->onProgressChanged(I)V

    :cond_7
    return-void
.end method
