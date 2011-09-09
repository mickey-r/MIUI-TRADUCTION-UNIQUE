.class Lcom/miui/compass/CompassActivity$1;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v4, 0x43b4

    const/high16 v8, 0x3f80

    .line 65
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, v2, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    if-eqz v2, :cond_4

    .line 66
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$200(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$300(Lcom/miui/compass/CompassActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$200(Lcom/miui/compass/CompassActivity;)F

    move-result v1

    .line 71
    .local v1, to:F
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v2

    sub-float v2, v1, v2

    const/high16 v3, 0x4334

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 72
    sub-float/2addr v1, v4

    .line 78
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v2

    sub-float v0, v1, v2

    .line 79
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    .line 80
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    move v0, v8

    .line 85
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v4, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v4}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v5

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$400(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    const v7, 0x3ecccccd

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/miui/compass/CompassActivity;->access$500(Lcom/miui/compass/CompassActivity;F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/compass/CompassActivity;->access$102(Lcom/miui/compass/CompassActivity;F)F

    .line 89
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, v2, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassView;->updateDirection(F)V

    .line 92
    .end local v0           #distance:F
    .end local v1           #to:F
    :cond_2
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$600(Lcom/miui/compass/CompassActivity;)V

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, v2, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v3, v3, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_4
    return-void

    .line 73
    .restart local v1       #to:F
    :cond_5
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v2

    sub-float v2, v1, v2

    const/high16 v3, -0x3ccc

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 74
    add-float/2addr v1, v4

    goto :goto_0

    .line 80
    .restart local v0       #distance:F
    :cond_6
    const/high16 v2, -0x4080

    move v0, v2

    goto :goto_1

    .line 85
    :cond_7
    const v7, 0x3e99999a

    goto :goto_2
.end method
