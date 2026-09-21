.class final Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mRetrieved:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 4

    .line 62
    iget-boolean v0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    .line 65
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0

    .line 63
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 51
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    return-void

    :catch_e
    move-exception p0

    .line 54
    const-string p1, "questionnaire"

    const-string p2, "InterruptedException"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
