.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    check-cast p1, Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->$r8$lambda$5f7ViFghSnVkxEyxMzQiV7GbK-g(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    move-result-object p0

    return-object p0
.end method
