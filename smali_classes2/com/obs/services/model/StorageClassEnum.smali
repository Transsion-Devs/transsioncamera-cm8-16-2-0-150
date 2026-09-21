.class public final enum Lcom/obs/services/model/StorageClassEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/StorageClassEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/StorageClassEnum;

.field public static final enum COLD:Lcom/obs/services/model/StorageClassEnum;

.field public static final enum DEEP_ARCHIVE:Lcom/obs/services/model/StorageClassEnum;

.field public static final enum STANDARD:Lcom/obs/services/model/StorageClassEnum;

.field public static final enum WARM:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 27
    new-instance v0, Lcom/obs/services/model/StorageClassEnum;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/StorageClassEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/obs/services/model/StorageClassEnum;->STANDARD:Lcom/obs/services/model/StorageClassEnum;

    .line 32
    new-instance v1, Lcom/obs/services/model/StorageClassEnum;

    const-string v2, "WARM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/obs/services/model/StorageClassEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/obs/services/model/StorageClassEnum;->WARM:Lcom/obs/services/model/StorageClassEnum;

    .line 37
    new-instance v2, Lcom/obs/services/model/StorageClassEnum;

    const-string v3, "COLD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/obs/services/model/StorageClassEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/obs/services/model/StorageClassEnum;->COLD:Lcom/obs/services/model/StorageClassEnum;

    .line 42
    new-instance v3, Lcom/obs/services/model/StorageClassEnum;

    const-string v4, "DEEP_ARCHIVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/obs/services/model/StorageClassEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/obs/services/model/StorageClassEnum;->DEEP_ARCHIVE:Lcom/obs/services/model/StorageClassEnum;

    .line 22
    filled-new-array {v0, v1, v2, v3}, [Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/StorageClassEnum;->$VALUES:[Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;
    .registers 2

    .line 49
    const-string v0, "STANDARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    sget-object p0, Lcom/obs/services/model/StorageClassEnum;->STANDARD:Lcom/obs/services/model/StorageClassEnum;

    return-object p0

    .line 51
    :cond_b
    const-string v0, "WARM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "STANDARD_IA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_3d

    .line 53
    :cond_1c
    const-string v0, "COLD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "GLACIER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_3a

    .line 55
    :cond_2d
    const-string v0, "DEEP_ARCHIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 56
    sget-object p0, Lcom/obs/services/model/StorageClassEnum;->DEEP_ARCHIVE:Lcom/obs/services/model/StorageClassEnum;

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/obs/services/model/StorageClassEnum;->COLD:Lcom/obs/services/model/StorageClassEnum;

    return-object p0

    .line 52
    :cond_3d
    :goto_3d
    sget-object p0, Lcom/obs/services/model/StorageClassEnum;->WARM:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;
    .registers 2

    .line 22
    const-class v0, Lcom/obs/services/model/StorageClassEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 22
    sget-object v0, Lcom/obs/services/model/StorageClassEnum;->$VALUES:[Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/StorageClassEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/StorageClassEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
