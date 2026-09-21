.class public final enum Lcom/obs/services/model/BucketTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/BucketTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/BucketTypeEnum;

.field public static final enum OBJECT:Lcom/obs/services/model/BucketTypeEnum;

.field public static final enum PFS:Lcom/obs/services/model/BucketTypeEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 19
    new-instance v0, Lcom/obs/services/model/BucketTypeEnum;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/obs/services/model/BucketTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    .line 21
    new-instance v1, Lcom/obs/services/model/BucketTypeEnum;

    const/4 v2, 0x1

    const-string v3, "POSIX"

    const-string v4, "PFS"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/BucketTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/BucketTypeEnum;->PFS:Lcom/obs/services/model/BucketTypeEnum;

    .line 17
    filled-new-array {v0, v1}, [Lcom/obs/services/model/BucketTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/BucketTypeEnum;->$VALUES:[Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/obs/services/model/BucketTypeEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/BucketTypeEnum;
    .registers 2

    .line 17
    const-class v0, Lcom/obs/services/model/BucketTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 17
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->$VALUES:[Lcom/obs/services/model/BucketTypeEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/BucketTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/BucketTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/obs/services/model/BucketTypeEnum;->code:Ljava/lang/String;

    return-object p0
.end method
