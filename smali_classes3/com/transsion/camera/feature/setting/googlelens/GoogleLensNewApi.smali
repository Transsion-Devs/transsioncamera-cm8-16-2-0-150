.class public Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;


# static fields
.field private static final GOOGLE_LENS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoogleLensNewApi"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_f

    .line 34
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is not instanceof Activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_f
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getLensIntent()Landroid/content/Intent;
    .registers 2

    .line 73
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v0, "google://lens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public checkLensStatus()I
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkLensAvailable context is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 46
    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->getLensIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_23

    .line 49
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkLensAvailable lensComponent is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 52
    :cond_23
    const-string p0, "com.google.android.googlequicksearchbox"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 54
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkLensAvailable has been disabled"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public startLens(Landroid/app/Activity;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->getLensIntent()Landroid/content/Intent;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x3e8

    .line 65
    :try_start_10
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    .line 67
    :catch_14
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "google lens activity is not found"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
