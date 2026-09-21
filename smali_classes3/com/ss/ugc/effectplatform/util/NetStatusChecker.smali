.class public final Lcom/ss/ugc/effectplatform/util/NetStatusChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/NetStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;->INSTANCE:Lcom/ss/ugc/effectplatform/util/NetStatusChecker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .line 24
    :try_start_0
    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_18

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 26
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 27
    const-string p1, "networkInfo"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    .line 24
    :cond_18
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final isNetConnected(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 15
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_e

    .line 16
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/NetStatusChecker;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_e
    return v0
.end method
