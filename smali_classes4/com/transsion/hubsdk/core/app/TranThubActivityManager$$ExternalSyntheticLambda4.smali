.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    check-cast p1, Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->$r8$lambda$TU5wrA8g5qox2X09AskcGrDzBgo(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    move-result-object p0

    return-object p0
.end method
