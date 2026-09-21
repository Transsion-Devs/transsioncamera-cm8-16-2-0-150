.class public final Lcom/ss/ugc/effectplatform/util/PlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlatformSDKVersion()Ljava/lang/String;
    .registers 1

    .line 12
    const-string p0, "760.0.0.175-cktob"

    return-object p0
.end method

.method public final getPlatformType()Lcom/ss/ugc/effectplatform/util/PlatformType;
    .registers 1

    .line 16
    sget-object p0, Lcom/ss/ugc/effectplatform/util/PlatformType;->ANDROID:Lcom/ss/ugc/effectplatform/util/PlatformType;

    return-object p0
.end method
