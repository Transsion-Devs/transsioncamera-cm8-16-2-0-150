.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private mBillionDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBillionDrawableId:I

.field private final mBillionValue:I

.field private mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMultiOffDrawableId:I

.field private mOnDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOnDrawableId:I

.field private final mOnValue:I

.field private mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSingleOffDrawableId:I


# direct methods
.method constructor <init>(IIIIII)V
    .registers 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    .line 63
    iput p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    .line 64
    iput p3, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawableId:I

    .line 65
    iput p4, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawableId:I

    .line 66
    iput p5, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawableId:I

    .line 67
    iput p6, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawableId:I

    return-void
.end method


# virtual methods
.method public getBillionDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMPValue(Ljava/lang/String;)I
    .registers 3

    .line 106
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    return p0

    .line 108
    :cond_b
    const-string v0, "billion"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 109
    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public getMultiOffDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOnDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSingleOffDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public loadDrawable(Landroid/content/res/Resources;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 72
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawableId:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_18

    .line 75
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawableId:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_18
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawableId:I

    if-nez v0, :cond_21

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2b

    .line 80
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2b

    .line 81
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_37

    .line 85
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawableId:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    :cond_37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info: OnValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BillionValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
