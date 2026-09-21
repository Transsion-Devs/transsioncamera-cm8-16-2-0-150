.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;
.super Lcom/transsion/hubsdk/app/ITranProcessObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubProcessObserver"
.end annotation


# instance fields
.field private mObserverInner:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .registers 3

    .line 1472
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranProcessObserver$Stub;-><init>()V

    .line 1473
    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;->mObserverInner:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    .line 1478
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;->mObserverInner:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    .line 1483
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;->mObserverInner:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onForegroundServicesChanged(III)V

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 1488
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;->mObserverInner:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onProcessDied(II)V

    return-void
.end method
