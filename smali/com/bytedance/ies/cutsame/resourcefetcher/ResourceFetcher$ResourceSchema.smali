.class public final enum Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

.field public static final enum EFFECT:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

.field public static final enum NORMAL:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

.field static final SCHEMA_DELIMITER:Ljava/lang/String; = "://"

.field public static final enum VIDEO:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->VIDEO:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    .line 13
    new-instance v1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    const-string v2, "EFFECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->EFFECT:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    .line 14
    new-instance v2, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    const-string v3, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->NORMAL:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    .line 11
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->$VALUES:[Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->$VALUES:[Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {v0}, [Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    return-object v0
.end method
