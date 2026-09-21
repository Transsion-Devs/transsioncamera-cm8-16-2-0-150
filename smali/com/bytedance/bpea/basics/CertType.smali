.class public final enum Lcom/bytedance/bpea/basics/CertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/bpea/basics/CertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/bpea/basics/CertType;

.field public static final enum PRIVACY_CERT:Lcom/bytedance/bpea/basics/CertType;

.field public static final enum TOKEN_CERT:Lcom/bytedance/bpea/basics/CertType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bytedance/bpea/basics/CertType;

    .line 12
    const-string v1, "PRIVACY_CERT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/bpea/basics/CertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/bpea/basics/CertType;->PRIVACY_CERT:Lcom/bytedance/bpea/basics/CertType;

    new-instance v1, Lcom/bytedance/bpea/basics/CertType;

    const-string v2, "TOKEN_CERT"

    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bpea/basics/CertType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bpea/basics/CertType;->TOKEN_CERT:Lcom/bytedance/bpea/basics/CertType;

    filled-new-array {v0, v1}, [Lcom/bytedance/bpea/basics/CertType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bpea/basics/CertType;->$VALUES:[Lcom/bytedance/bpea/basics/CertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/bpea/basics/CertType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/bpea/basics/CertType;
    .registers 2

    const-class v0, Lcom/bytedance/bpea/basics/CertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bpea/basics/CertType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/bpea/basics/CertType;
    .registers 1

    sget-object v0, Lcom/bytedance/bpea/basics/CertType;->$VALUES:[Lcom/bytedance/bpea/basics/CertType;

    invoke-virtual {v0}, [Lcom/bytedance/bpea/basics/CertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/bpea/basics/CertType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/bytedance/bpea/basics/CertType;->type:I

    return p0
.end method
