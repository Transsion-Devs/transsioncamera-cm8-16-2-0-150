.class public final enum Lcom/transsion/aicore/cv/ipc/data/GenerateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_DEFAULT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_GENERATE_PORTRAIT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_IMAGE_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_IMAGE_TO_THEME:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_IMAGE_TO_VIDEO_CANCEL:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_IMAGE_TO_VIDEO_CREATE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_IMAGE_TO_VIDEO_QUERY:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_SKETCH_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_TEXT_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

.field public static final enum GENERATE_WORD_GRAFFITI:Lcom/transsion/aicore/cv/ipc/data/GenerateType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/cv/ipc/data/GenerateType;
    .registers 10

    sget-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_TEXT_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v1, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v2, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_CREATE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v3, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_QUERY:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v4, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_CANCEL:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v5, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_THEME:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v6, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_SKETCH_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v7, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_GENERATE_PORTRAIT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v8, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_WORD_GRAFFITI:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    sget-object v9, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_DEFAULT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    filled-new-array/range {v0 .. v9}, [Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x0

    const-string v2, "textToImage"

    const-string v3, "GENERATE_TEXT_TO_IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_TEXT_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 5
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x1

    const-string v2, "imageToImage"

    const-string v3, "GENERATE_IMAGE_TO_IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 6
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x2

    const-string v2, "imageToVideoCreate"

    const-string v3, "GENERATE_IMAGE_TO_VIDEO_CREATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_CREATE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 7
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x3

    const-string v2, "imageToVideoQuery"

    const-string v3, "GENERATE_IMAGE_TO_VIDEO_QUERY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_QUERY:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 8
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x4

    const-string v2, "imageToVideoCancel"

    const-string v3, "GENERATE_IMAGE_TO_VIDEO_CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_VIDEO_CANCEL:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 9
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x5

    const-string v2, "imageToTheme"

    const-string v3, "GENERATE_IMAGE_TO_THEME"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_IMAGE_TO_THEME:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 10
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x6

    const-string v2, "sketchImage"

    const-string v3, "GENERATE_SKETCH_IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_SKETCH_IMAGE:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 11
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/4 v1, 0x7

    const-string v2, "generatePortrait"

    const-string v3, "GENERATE_GENERATE_PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_GENERATE_PORTRAIT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 12
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/16 v1, 0x8

    const-string/jumbo v2, "wordGraffiti"

    const-string v3, "GENERATE_WORD_GRAFFITI"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_WORD_GRAFFITI:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    .line 13
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    const/16 v1, 0x9

    const-string v2, "all"

    const-string v3, "GENERATE_DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_DEFAULT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    invoke-static {}, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->$values()[Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->$VALUES:[Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/data/GenerateType;
    .registers 2

    const-class v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/cv/ipc/data/GenerateType;
    .registers 1

    sget-object v0, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->$VALUES:[Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, [Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    return-object v0
.end method
