.class public final Lcom/ss/ugc/effectplatform/common/EffectConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/common/EffectConstants;

.field private static KB:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lcom/ss/ugc/effectplatform/common/EffectConstants;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/common/EffectConstants;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/common/EffectConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/common/EffectConstants;

    const/16 v0, 0x400

    .line 55
    sput v0, Lcom/ss/ugc/effectplatform/common/EffectConstants;->KB:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKB()I
    .registers 1

    .line 55
    sget p0, Lcom/ss/ugc/effectplatform/common/EffectConstants;->KB:I

    return p0
.end method
