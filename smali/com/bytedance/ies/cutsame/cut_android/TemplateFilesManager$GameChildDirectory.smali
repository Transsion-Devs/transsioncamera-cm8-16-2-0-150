.class public final enum Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameChildDirectory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum EFFECT_MANAGER:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum EFFECT_MANAGER_MODEL:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum GAME_PLAY:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum MEDIA_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum OUTPUT:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum VEEDITOR:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

.field public static final enum VESDK:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;


# instance fields
.field private final dirName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;
    .registers 9

    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->VESDK:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->VEEDITOR:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->EFFECT_MANAGER:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->EFFECT_MANAGER_MODEL:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v4, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->MEDIA_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v5, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v6, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v7, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->OUTPUT:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    sget-object v8, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->GAME_PLAY:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    filled-new-array/range {v0 .. v8}, [Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 68
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x0

    const-string v2, "vesdk"

    const-string v3, "VESDK"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->VESDK:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 69
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x1

    const-string v2, "veeditor"

    const-string v3, "VEEDITOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->VEEDITOR:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 70
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x2

    const-string v2, "effectmanager"

    const-string v3, "EFFECT_MANAGER"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->EFFECT_MANAGER:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 71
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x3

    const-string v2, "effectmodel"

    const-string v3, "EFFECT_MANAGER_MODEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->EFFECT_MANAGER_MODEL:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 72
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x4

    const-string v2, "media_cache"

    const-string v3, "MEDIA_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->MEDIA_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 73
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x5

    const-string v2, "template_cache"

    const-string v3, "TEMPLATE_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 74
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x6

    const-string v2, "workspace"

    const-string v3, "TEMPLATE_WORKSPACE"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 75
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/4 v1, 0x7

    const-string v2, "output"

    const-string v3, "OUTPUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->OUTPUT:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    .line 76
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    const/16 v1, 0x8

    const-string v2, "game_play_cache"

    const-string v3, "GAME_PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->GAME_PLAY:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    invoke-static {}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->$values()[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->dirName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;
    .registers 2

    const-class v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;
    .registers 1

    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;

    return-object v0
.end method


# virtual methods
.method public final getDirName()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$GameChildDirectory;->dirName:Ljava/lang/String;

    return-object p0
.end method
