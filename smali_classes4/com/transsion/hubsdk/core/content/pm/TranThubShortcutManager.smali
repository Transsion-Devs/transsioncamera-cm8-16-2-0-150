.class public Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranShortcutManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubShortcutManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;


# direct methods
.method public static synthetic $r8$lambda$8p26jsXseY_ihXgZdEnRyHGQP40(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->lambda$requestPinShortcut$0(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "shortcut"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranShortcutManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;

    return-void
.end method

.method private synthetic lambda$requestPinShortcut$0(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Ljava/lang/Object;
    .registers 5

    .line 37
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;

    if-eqz p0, :cond_d

    .line 38
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 40
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 12

    .line 36
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)V

    const-string p0, "shortcut"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 42
    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestPinShortcut result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranShortcutManager;

    return-void
.end method
