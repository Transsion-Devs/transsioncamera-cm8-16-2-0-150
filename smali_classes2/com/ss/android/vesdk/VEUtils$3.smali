.class Lcom/ss/android/vesdk/VEUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$infoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)V
    .registers 2

    .line 1580
    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$3;->val$infoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFFmpegInfo(Ljava/lang/String;)V
    .registers 2

    .line 1583
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$3;->val$infoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;

    if-eqz p0, :cond_7

    .line 1584
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;->updateFFmpegInfo(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
