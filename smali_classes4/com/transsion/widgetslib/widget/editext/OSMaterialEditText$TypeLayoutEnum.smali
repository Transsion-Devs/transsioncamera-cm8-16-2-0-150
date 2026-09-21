.class public final enum Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeLayoutEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum LEFT:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum LEFT_BIG_IMAGE_TYPE_1:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum LEFT_BIG_IMAGE_TYPE_2:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum NOTHING:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum RIGHT:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

.field public static final enum RIGHT_BIG_IMAGE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 37
    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->NOTHING:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 38
    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->RIGHT:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 39
    new-instance v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v3, "RIGHT_BIG_IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->RIGHT_BIG_IMAGE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 40
    new-instance v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->LEFT:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 41
    new-instance v4, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v5, "LEFT_BIG_IMAGE_TYPE_1"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->LEFT_BIG_IMAGE_TYPE_1:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 42
    new-instance v5, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    const-string v6, "LEFT_BIG_IMAGE_TYPE_2"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->LEFT_BIG_IMAGE_TYPE_2:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    .line 36
    filled-new-array/range {v0 .. v5}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;
    .registers 2

    .line 36
    const-class v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;
    .registers 1

    .line 36
    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    invoke-virtual {v0}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;

    return-object v0
.end method
