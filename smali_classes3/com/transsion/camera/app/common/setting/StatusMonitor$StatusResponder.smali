.class public Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/StatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusResponder"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final mResponderName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maddListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->addListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddListenerToFirst(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->addListenerToFirst(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->removeListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mResponderName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;)V

    return-void
.end method

.method private addListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private addListenerToFirst(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method private removeListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public statusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method
