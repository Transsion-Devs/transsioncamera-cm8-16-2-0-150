.class public Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranLocalePickerManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;
    .registers 2

    .line 74
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 75
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    :cond_11
    return-object p1

    .line 77
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    :cond_1d
    return-object p1
.end method

.method public updateLocale(Ljava/util/Locale;)V
    .registers 3

    .line 70
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method
