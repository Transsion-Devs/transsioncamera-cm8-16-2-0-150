.class public final enum Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 84
    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 85
    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 86
    new-instance v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v3, "MIDDLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 87
    new-instance v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 83
    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
    .registers 2

    .line 83
    const-class v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
    .registers 1

    .line 83
    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v0}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    return-object v0
.end method
