.class abstract Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseModeType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;
    }
.end annotation


# instance fields
.field private mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field protected final mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field private final mModeType:Ljava/lang/String;

.field protected final mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewStyle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->changeStyle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveModeStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->saveModeStyle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msizeChanged(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->sizeChanged()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V
    .registers 4

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 242
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 160
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V

    return-void
.end method

.method private changeStyle()V
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    if-nez p0, :cond_e

    .line 165
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "changeStyle, mCurrentStyle is null!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->changeStyle()V

    return-void
.end method

.method private saveModeStyle()V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 233
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private savedModeStyle()Ljava/lang/String;
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .registers 3

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedModeStyle()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "height_full_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "width_full_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    return-object p0

    .line 215
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0

    .line 218
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method

.method private sizeChanged()V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    if-nez v0, :cond_c

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    .line 175
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->sizeChanged()V

    return-void
.end method


# virtual methods
.method abstract defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.end method

.method final entry()V
    .registers 4

    .line 179
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode type change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mModeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    if-eq v0, p0, :cond_5b

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->onLeave()V

    .line 185
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fputmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->onEntry()V

    :cond_5b
    return-void
.end method

.method protected onEntry()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->savedStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    return-void

    .line 202
    :cond_d
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method
