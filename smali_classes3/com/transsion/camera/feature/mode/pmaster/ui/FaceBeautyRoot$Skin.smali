.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Skin"
.end annotation


# instance fields
.field private final drawableId:I

.field private final featureId:I

.field public group:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

.field private final key:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->drawableId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->featureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->title:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1129
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;-><init>()V

    .line 1130
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->featureId:I

    .line 1131
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->key:Ljava/lang/String;

    .line 1132
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->drawableId:I

    .line 1133
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
