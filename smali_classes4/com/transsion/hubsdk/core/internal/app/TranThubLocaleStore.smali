.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;


# instance fields
.field private mTranLocaleStore:Lcom/transsion/hubsdk/internal/app/TranLocaleStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->mTranLocaleStore:Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    invoke-direct {v0}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->mTranLocaleStore:Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    .line 71
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->mTranLocaleStore:Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    return-object p0
.end method


# virtual methods
.method public getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .registers 11
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

    .line 23
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p3, :cond_32

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;

    .line 28
    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_14

    .line 30
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    .line 35
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;

    .line 36
    new-instance p2, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p4, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_57
    return-object v1
.end method

.method public getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .registers 11
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

    if-eqz p3, :cond_1b

    .line 45
    new-instance v0, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;-><init>(Lcom/transsion/hubsdk/internal/app/TranLocaleStore;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 47
    :goto_1c
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;->getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p3, :cond_4d

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;

    .line 52
    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2f

    .line 54
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleStore;->getTranLocaleStoreImpl()Lcom/transsion/hubsdk/internal/app/TranLocaleStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore;->getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    .line 59
    :cond_4d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;

    .line 60
    new-instance p2, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, p4, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleStore$TranLocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->setParent(Ljava/util/Locale;)V

    .line 62
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_79
    return-object v1
.end method
