.class Lcom/meicam/sdk/NvsCheckExpirationOnline$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsCheckExpirationOnline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsCheckExpirationOnline;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsCheckExpirationOnline;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/meicam/sdk/NvsCheckExpirationOnline$1;->this$0:Lcom/meicam/sdk/NvsCheckExpirationOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/meicam/sdk/NvsCheckExpirationOnline$1;->this$0:Lcom/meicam/sdk/NvsCheckExpirationOnline;

    # getter for: Lcom/meicam/sdk/NvsCheckExpirationOnline;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->access$000(Lcom/meicam/sdk/NvsCheckExpirationOnline;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 39
    iget-object p0, p0, Lcom/meicam/sdk/NvsCheckExpirationOnline$1;->this$0:Lcom/meicam/sdk/NvsCheckExpirationOnline;

    # getter for: Lcom/meicam/sdk/NvsCheckExpirationOnline;->mThread:Ljava/lang/Thread;
    invoke-static {p0}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->access$000(Lcom/meicam/sdk/NvsCheckExpirationOnline;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method
