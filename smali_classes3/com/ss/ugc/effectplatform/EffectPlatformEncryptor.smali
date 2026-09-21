.class public final Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

.field private static encryptor:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;
    .registers 1

    .line 12
    sget-object p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->encryptor:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    return-object p0
.end method

.method public final setEncryptor(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;)V
    .registers 2

    .line 12
    sput-object p1, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->encryptor:Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    return-void
.end method
