.class public final enum Lcom/obs/services/model/select/ExpressionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/select/ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/select/ExpressionType;

.field public static final enum SQL:Lcom/obs/services/model/select/ExpressionType;


# instance fields
.field private final expressionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/obs/services/model/select/ExpressionType;

    const-string v1, "SQL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/obs/services/model/select/ExpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/select/ExpressionType;->SQL:Lcom/obs/services/model/select/ExpressionType;

    .line 20
    filled-new-array {v0}, [Lcom/obs/services/model/select/ExpressionType;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/select/ExpressionType;->$VALUES:[Lcom/obs/services/model/select/ExpressionType;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/obs/services/model/select/ExpressionType;->expressionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/select/ExpressionType;
    .registers 2

    .line 20
    const-class v0, Lcom/obs/services/model/select/ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/select/ExpressionType;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/select/ExpressionType;
    .registers 1

    .line 20
    sget-object v0, Lcom/obs/services/model/select/ExpressionType;->$VALUES:[Lcom/obs/services/model/select/ExpressionType;

    invoke-virtual {v0}, [Lcom/obs/services/model/select/ExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/select/ExpressionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/obs/services/model/select/ExpressionType;->expressionType:Ljava/lang/String;

    return-object p0
.end method
