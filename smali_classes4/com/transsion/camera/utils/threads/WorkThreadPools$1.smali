.class Lcom/transsion/camera/utils/threads/WorkThreadPools$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/threads/WorkThreadPools;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/WorkThreadPools$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
