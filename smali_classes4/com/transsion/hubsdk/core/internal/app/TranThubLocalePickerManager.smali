.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLocalePickerManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;


# direct methods
.method public static synthetic $r8$lambda$7NdUE8rgAkX_LsO21i4p5_jZuEg(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->lambda$updateLocale$0(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "locale_picker"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranThubLocalePickerManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    return-void
.end method

.method private synthetic lambda$updateLocale$0(Ljava/util/Locale;)Ljava/lang/Object;
    .registers 3

    .line 75
    new-instance v0, Lcom/transsion/hubsdk/internal/app/TranLocale;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/internal/app/TranLocale;-><init>(Ljava/util/Locale;)V

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-eqz p0, :cond_c

    .line 77
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->updateLocale(Lcom/transsion/hubsdk/internal/app/TranLocale;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-nez v1, :cond_a

    goto :goto_4e

    .line 46
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :try_start_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception p0

    .line 50
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllAssetLocales fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_2d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;

    .line 53
    new-instance v1, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    return-void
.end method

.method public updateLocale(Ljava/util/Locale;)V
    .registers 4

    .line 74
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)V

    const-string p0, "locale_picker"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    sget-object p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    const-string p1, "updateLocale"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .registers 4

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-nez p0, :cond_5

    return-void

    .line 66
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->updateLocales(Landroid/os/LocaleList;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLocales fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
