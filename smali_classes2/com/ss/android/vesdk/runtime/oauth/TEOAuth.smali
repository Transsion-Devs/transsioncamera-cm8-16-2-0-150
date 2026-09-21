.class public Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;
    .registers 10

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 28
    const-string v3, "Android"

    .line 29
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;->nativeActivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 35
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;->from(I)Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    move-result-object p0

    return-object p0
.end method

.method public static getActivationCode()Ljava/lang/String;
    .registers 1

    .line 39
    invoke-static {}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;->nativeGetActivationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeActivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetActivationCode()Ljava/lang/String;
.end method
