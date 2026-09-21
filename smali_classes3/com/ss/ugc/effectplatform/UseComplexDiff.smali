.class public final Lcom/ss/ugc/effectplatform/UseComplexDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/UseComplexDiff;

.field private static enableComplexDiff:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/ss/ugc/effectplatform/UseComplexDiff;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/UseComplexDiff;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/UseComplexDiff;->INSTANCE:Lcom/ss/ugc/effectplatform/UseComplexDiff;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/ss/ugc/effectplatform/UseComplexDiff;->enableComplexDiff:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableComplexDiff()Z
    .registers 1

    .line 9
    sget-boolean p0, Lcom/ss/ugc/effectplatform/UseComplexDiff;->enableComplexDiff:Z

    return p0
.end method
