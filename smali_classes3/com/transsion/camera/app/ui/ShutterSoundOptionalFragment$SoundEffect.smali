.class Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundEffect"
.end annotation


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;->title:Ljava/lang/String;

    return-object p0
.end method
