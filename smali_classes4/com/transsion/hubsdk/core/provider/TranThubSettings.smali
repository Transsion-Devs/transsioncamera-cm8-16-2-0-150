.class public Lcom/transsion/hubsdk/core/provider/TranThubSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubSettings"


# instance fields
.field private mService:Lcom/transsion/hubsdk/provider/ITranSettings;

.field private mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "settings_provider"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/transsion/hubsdk/provider/ITranSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/provider/ITranSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    return-void
.end method

.method private getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    if-nez v0, :cond_b

    .line 131
    new-instance v0, Lcom/transsion/hubsdk/provider/TranSettings;

    invoke-direct {v0}, Lcom/transsion/hubsdk/provider/TranSettings;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    .line 133
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mTranSettings:Lcom/transsion/hubsdk/provider/TranSettings;

    return-object p0
.end method


# virtual methods
.method public getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    .line 138
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getSecureIntForUser(Ljava/lang/String;II)I
    .registers 4

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_9

    .line 36
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return p0

    :cond_9
    return p2

    .line 39
    :catch_a
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSecureIntForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 158
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_10

    .line 98
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 101
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSecureStringForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .registers 5

    .line 148
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public getSystemFloatForUser(Ljava/lang/String;FI)F
    .registers 4

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_9

    .line 60
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->getSystemFloatForUser(Ljava/lang/String;FI)F

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return p0

    :cond_9
    return p2

    .line 63
    :catch_a
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "getSystemFloatForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .registers 6

    .line 168
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/provider/TranSettings;->getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 121
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 126
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 5

    .line 143
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public putSecureIntForUser(Ljava/lang/String;II)Z
    .registers 4

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_10

    .line 48
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSecureIntForUser(Ljava/lang/String;II)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 51
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSecureIntForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 163
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_10

    .line 110
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 113
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSecureStringForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .registers 5

    .line 153
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->getTranSettingsImpl()Lcom/transsion/hubsdk/provider/TranSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/provider/TranSettings;->putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public putSystemFloatForUser(Ljava/lang/String;FI)Z
    .registers 4

    .line 85
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_10

    .line 86
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSystemFloatForUser(Ljava/lang/String;FI)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 89
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSystemFloatForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public putSystemStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->mService:Lcom/transsion/hubsdk/provider/ITranSettings;

    if-eqz p0, :cond_10

    .line 73
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/provider/ITranSettings;->putSystemStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 76
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;->TAG:Ljava/lang/String;

    const-string p1, "putSystemFloatForUser fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
