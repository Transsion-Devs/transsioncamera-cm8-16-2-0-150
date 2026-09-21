.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;
    }
.end annotation


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;->getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;
    .registers 2

    .line 26
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 27
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;

    :cond_11
    return-object p1

    .line 29
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;

    :cond_1d
    return-object p1
.end method
