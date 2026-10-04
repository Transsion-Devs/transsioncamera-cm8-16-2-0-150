.class Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
.super Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranActivityStarterExecutedCallback"
.end annotation


# instance fields
.field private final mObserver:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;


# direct methods
.method private constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V
    .registers 3

    .line 1546
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback$Stub;-><init>()V

    .line 1547
    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$1;)V
    .registers 4

    .line 1543
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V

    return-void
.end method


# virtual methods
.method public onActivityStarterExecuted(ILandroid/content/Intent;)V
    .registers 3

    .line 1552
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    if-eqz p0, :cond_7

    .line 1553
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;->onActivityStarterExecuted(ILandroid/content/Intent;)V

    :cond_7
    return-void
.end method
