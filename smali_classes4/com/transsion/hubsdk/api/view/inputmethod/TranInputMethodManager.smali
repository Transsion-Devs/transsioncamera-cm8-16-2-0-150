.class public Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranInputMethodManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/inputmethod/TranAospInputMethodManager;

.field private mThubService:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 4

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V

    return-void
.end method

.method public freeSoftInputViewsLeaks(Landroid/content/Context;Landroid/view/Window;)V
    .registers 4

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->freeSoftInputViewsLeaks(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;
    .registers 3

    .line 31
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 32
    sget-object p1, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubInputMethodManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->mThubService:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->mThubService:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    :cond_18
    return-object p1

    .line 35
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospInputMethodManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/inputmethod/TranAospInputMethodManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/inputmethod/TranAospInputMethodManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/inputmethod/TranAospInputMethodManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->mAospService:Lcom/transsion/hubsdk/aosp/view/inputmethod/TranAospInputMethodManager;

    :cond_2b
    return-object p1
.end method

.method public hideAllInputMethod(II)V
    .registers 4

    .line 122
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->hideAllInputMethod(II)V

    return-void
.end method

.method public hideSoftInputMethodByPrivilegeUser()V
    .registers 2

    .line 127
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->hideSoftInputMethodByPrivilegeUser()V

    return-void
.end method

.method public registerGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->registerGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    return-void

    .line 87
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerGlobalWritingListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchTranInputMethod(Z)V
    .registers 3

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->switchTranInputMethod(Z)V

    return-void
.end method

.method public unregisterGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 101
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->unregisterGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    return-void

    .line 99
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterGlobalWritingListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateSecurityInputBlackList(Ljava/util/List;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/inputmethod/TranInputMethodManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;->updateSecurityInputBlackList(Ljava/util/List;)V

    return-void
.end method
