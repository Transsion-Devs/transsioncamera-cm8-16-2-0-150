.class public final enum Lcom/obs/services/model/select/FileHeaderInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/select/FileHeaderInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/select/FileHeaderInfo;

.field public static final enum IGNORE:Lcom/obs/services/model/select/FileHeaderInfo;

.field public static final enum NONE:Lcom/obs/services/model/select/FileHeaderInfo;

.field public static final enum USE:Lcom/obs/services/model/select/FileHeaderInfo;


# instance fields
.field private final headerInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    new-instance v0, Lcom/obs/services/model/select/FileHeaderInfo;

    const-string v1, "USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/obs/services/model/select/FileHeaderInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/select/FileHeaderInfo;->USE:Lcom/obs/services/model/select/FileHeaderInfo;

    .line 22
    new-instance v1, Lcom/obs/services/model/select/FileHeaderInfo;

    const-string v2, "IGNORE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/obs/services/model/select/FileHeaderInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/select/FileHeaderInfo;->IGNORE:Lcom/obs/services/model/select/FileHeaderInfo;

    .line 23
    new-instance v2, Lcom/obs/services/model/select/FileHeaderInfo;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/obs/services/model/select/FileHeaderInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/select/FileHeaderInfo;->NONE:Lcom/obs/services/model/select/FileHeaderInfo;

    .line 20
    filled-new-array {v0, v1, v2}, [Lcom/obs/services/model/select/FileHeaderInfo;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/select/FileHeaderInfo;->$VALUES:[Lcom/obs/services/model/select/FileHeaderInfo;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/obs/services/model/select/FileHeaderInfo;->headerInfo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/select/FileHeaderInfo;
    .registers 2

    .line 20
    const-class v0, Lcom/obs/services/model/select/FileHeaderInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/select/FileHeaderInfo;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/select/FileHeaderInfo;
    .registers 1

    .line 20
    sget-object v0, Lcom/obs/services/model/select/FileHeaderInfo;->$VALUES:[Lcom/obs/services/model/select/FileHeaderInfo;

    invoke-virtual {v0}, [Lcom/obs/services/model/select/FileHeaderInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/select/FileHeaderInfo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/select/FileHeaderInfo;->headerInfo:Ljava/lang/String;

    return-object p0
.end method
