.class final Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatorHelper"
.end annotation


# instance fields
.field mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    return-void
.end method


# virtual methods
.method withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 128
    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p0

    sub-int p1, v2, v0

    .line 130
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v5, :cond_25

    move v1, v3

    .line 131
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "withoutAnimator isTranslateX: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", curTranslate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_51

    int-to-float v0, v2

    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_58

    .line 136
    :cond_51
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v2

    .line 137
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_58
    if-ne v4, v5, :cond_62

    if-ne p0, v3, :cond_62

    const/high16 p0, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_62
    if-ne v4, v3, :cond_7a

    if-ne p0, v3, :cond_7a

    if-eqz v1, :cond_81

    if-eqz p3, :cond_72

    int-to-float p0, v2

    .line 146
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 149
    :cond_72
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v2

    .line 150
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_7a
    if-ne v4, v3, :cond_81

    if-ne p0, v5, :cond_81

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_81
    return-void
.end method
